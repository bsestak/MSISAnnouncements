const staticCacheName = 'site-static-V2';
const assets = [
    '/Home.aspx',
    '/Account.aspx',
    '/SignIn.aspx',
    '/SignOut.aspx',
    '/NewEvent.aspx',
    '/Scripts/app.js',
    '/Content/AppCSS.css',
    '/Content/OSU1.css',
    '/Content/OSU2.css',
    '/Content/OSU3.css',
    '/Content/OSU4.css',
    '/Scripts/jquery-3.4.1.min.js',
    '/Scripts/bootstrap.min.js',
    '/Content/bootstrap.min.css',
    '/images/OSULogo.png'
];


self.addEventListener('install', evt => {
    evt.waitUntil(
        caches.open(staticCacheName).then(Cache => {
            //console.log('caching shell assets')
            Cache.addAll(assets);
        })
    );
});

self.addEventListener('activate', evt => {
    evt.waitUntil(
        caches.keys().then(keys => {
            return Promise.all(keys
                .filter(key => key !== staticCacheName)
                .map(key => caches.delete(key))
            )
        })
    );
    //console.log('service worker has been activated');
});

self.addEventListener('fetch', evt => {
    //console.log('Fetching',evt);
    evt.respondWith(
        caches.match(evt.request).then(cacheRes => {
            return cacheRes || fetch(evt.request);
        })
    )
});
importScripts('https://www.gstatic.com/firebasejs/8.10.1/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/8.10.1/firebase-messaging.js');

   /*Update with yours config*/
 const firebaseConfig = {
  apiKey: "AIzaSyDePKoLpdNJPqg1ilCWccUPl7AdxI3sY_w",
  authDomain: "emptytrunks-949b5.firebaseapp.com",
  projectId: "emptytrunks-949b5",
  storageBucket: "emptytrunks-949b5.appspot.com",
  messagingSenderId: "228651851514",
  appId: "1:228651851514:web:eac90d44e674c3fa2c7343"
 };
  firebase.initializeApp(firebaseConfig);
  const messaging = firebase.messaging();

  messaging.onBackgroundMessage(function(payload) {
    console.log('Received background message ', payload);

    const notificationTitle = payload.notification.title;
    const notificationOptions = {
      body: payload.notification.body,
    };

    self.registration.showNotification(notificationTitle,
      notificationOptions);
  });
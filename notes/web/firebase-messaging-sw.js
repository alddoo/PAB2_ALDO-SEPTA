importScripts(
  "https://www.gstatic.com/firebasejs/10.7.1/firebase-app-compat.js"
);
importScripts(
  "https://www.gstatic.com/firebasejs/10.7.1/firebase-messaging-compat.js"
);

// Gunakan konfigurasi web dari firebase_options.dart Anda
firebase.initializeApp({
  apiKey: "AIzaSyC2xSRGMCr50PLNRqRe8UCTbOWeov_jehI",
  authDomain: "notes-72713.firebaseapp.com",
  projectId: "notes-72713",
  storageBucket: "notes-72713.firebasestorage.app",
  messagingSenderId: "1039708756425",
  appId: "1:1039708756425:web:81ce42457d04930de9b018",
});

const messaging = firebase.messaging();

messaging.onBackgroundMessage((payload) => {
  const notificationTitle = payload.notification.title;
  const notificationOptions = {
    body: payload.notification.body,
    icon: "/favicon.png",
  };
  return self.registration.showNotification(
    notificationTitle,
    notificationOptions
  );
});

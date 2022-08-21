module.exports = {
  defaultBrowser: "Firefox",
  handlers: [
    {
      // Use chrome for meet
      match: ["meet.google.com/*", "meet.google.com"],
      browser: "Google Chrome"
    },
  ]
};

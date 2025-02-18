$("#form").validate({
   rules: {
      nama: {
         required: true
      },
      username: {
         required: true,
         minlength: 5
      },
      email: {
         required: true,
         email: true
      },
      phone: {
         required: true,
         minlength: 10
      },
      password: {
         required: true,
         minlength: 8
      },
      confirm: {
         required: true,
         equalTo: "#password"
      }
   },
   messages: {
      nama: {
         required: "Please enter your name"
      },
      username: {
         required: "Please enter a username",
         minlength: "Username at least 5 characters"
      },
      email: {
         required: "Please enter your email",
         email: "Please enter a valid email address"
      },
      phone: {
         // required: "Please enter your phone number",
         minlength: "Number at least 10 characters"
      },
      password: {
         required: "Please enter your password",
         minlength: "Password at least 8 characters"
      },
      confirm: {
         required: "Please confirm your password",
         equalTo: "Password does not match"
      },
   },

   submitHandler: function (form) {
      form.submit();
   }
});
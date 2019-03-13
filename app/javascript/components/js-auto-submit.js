const autoSubmitInputs = document.querySelectorAll('.js-auto-submit');

  autoSubmitInputs.forEach((input) => {
    input.addEventListener('change', () => {
      input.form.submit();
    })
  })

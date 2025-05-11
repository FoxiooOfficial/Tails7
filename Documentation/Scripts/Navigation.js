document.addEventListener('DOMContentLoaded', function()
{
  const navElement = document.querySelector('._Navigation');
  const savedPosition = localStorage.getItem('navScrollPosition');

      if (savedPosition)
      {
          navElement.scrollTop = savedPosition;
      }
  
  document.querySelectorAll('._Navigation a').forEach(link =>
  {
      link.addEventListener('click', function()
      {
          localStorage.setItem('navScrollPosition', navElement.scrollTop);
      });
  });

    const _CurrentURL = window.location.pathname.split('/').pop() || 'Index.html';
    const _Links = document.querySelectorAll('._Navigation a');
  
  _Links.forEach(link =>
  {
      const _LinkUrl = link.getAttribute('href').split('/').pop();

      if (_LinkUrl === _CurrentURL)
      {
          link.classList.add('active');
          
          let _Parent = link.parentElement;
          while (_Parent && _Parent.classList.contains('_Navigation') === false)
          {
              _Parent = _Parent.parentElement;
              if (_Parent.tagName === 'LI')
                {
                    const _ParentLink = _Parent.querySelector('> a');

                    if (_ParentLink) _ParentLink.classList.add('active');
              }
          }
      }
  });
});
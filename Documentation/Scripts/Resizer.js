const resizer = document.querySelector("._Resizer");
const sidebar = document.querySelector("._Sidebar");

let _IsResizing = false;
function saveSidebarWidth(width)
{
    localStorage.setItem('sidebarWidth', width);
}

function loadSidebarWidth()
{
    const _SavedWidth = localStorage.getItem('sidebarWidth');
    if (_SavedWidth)
        {
        document.documentElement.style.setProperty("--sidebar-width", _SavedWidth);
        return parseInt(_SavedWidth);
    }
    return parseInt(getComputedStyle(document.documentElement).getPropertyValue('--sidebar-width'));
}

document.addEventListener('DOMContentLoaded', function()
{
    loadSidebarWidth();
});

resizer.addEventListener("mousedown", function(e) {
    _IsResizing = true;
    document.body.style.cursor = "col-resize";
    document.body.style.userSelect = "none";
    e.preventDefault();
});

document.addEventListener("mousemove", function(e)
{
    if (!_IsResizing) return;
    e.preventDefault();
    
    let _Width = e.clientX;

        if (_Width < 150) _Width = 150;
        if (_Width > 600) _Width = 600;

    const widthString = _Width + "px";
    document.documentElement.style.setProperty("--sidebar-width", widthString);
    saveSidebarWidth(widthString);
});

document.addEventListener("mouseup", function(e)
{
    if (_IsResizing) {
        _IsResizing = false;
        document.body.style.cursor = "";
        document.body.style.userSelect = "";
    }
});

resizer.addEventListener("dragstart", function(e)
{
    e.preventDefault();
});
import urllib.request
import urllib.parse
import re
import tkinter as tk

foo_url = r"https://lesosai.com/logiciel/telechargements/?lang=de"
foo_dlfolder = r"\\jung.ch\dfs$\users$\pre\Downloads\Lesosai/"
foo_html = urllib.request.urlopen(foo_url).read()
foo_exe = re.findall(r'[^"]*2021\.\d.\d*x64\.exe', str(foo_html))

foo_links = []
fin_link = ""
dl_bool = ""
foo_dlname = ""

def check_dlink():
    global foo_links
    for exe in foo_exe:
        foo_links.append(exe)
    foo_links = link_dedub(foo_links)
    foo_dlname = re.findall(r'setup.*\.exe', foo_links[0])
    fin_dlfolder = str(foo_dlfolder)+str(foo_dlname)
    lbl_dlfile.configure(text=str(foo_dlfolder)+"\n"+str(foo_dlname))

def link_dedub(x):
    return list(dict.fromkeys(x))

window = tk.Tk()
window.title("Lesosai Download")

frm_main = tk.Frame(window, width=300, height=20)
btn_checklink = tk.Button(window, text="get file name", command=check_dlink)
btn_download = tk.Button(window, text="download")
lbl_dlfile = tk.Label(window, text="File Name: ")
#lbl_all = tk.Label(window, text=foo_links)

frm_main.grid(row=0, column=0, columnspan=2)
btn_checklink.grid(row=0, column=0, sticky="w")
lbl_dlfile.grid(row=0, column=1)
btn_download.grid(row=1, column=0, sticky="w")
#lbl_all.grid(row=3, column=1)

window.mainloop()

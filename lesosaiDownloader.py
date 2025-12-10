import urllib.request
import urllib.parse
import re

foo_url = r"https://lesosai.com/logiciel/telechargements/?lang=de"
foo_dlfolder = r"\\jung.ch\dfs$\users$\pre\Downloads\Lesosai/"
foo_html = urllib.request.urlopen(foo_url).read()
foo_exe = re.findall(r'[^"]*2023\.\d.\d*x64\.exe', str(foo_html))

foo_links = []
fin_link = ""
dl_bool = ""

def check_dlink():
    global foo_exe
    global foo_links
    for exe in foo_exe:
        foo_links.append(exe)

def dlink_dedup(x):
    return list(dict.fromkeys(x))    

check_dlink()
fin_link = dlink_dedup(foo_links)
file_name = str(str(fin_link).split("2023/", 1)[1]).split("'",1)[0]
#file_name = str(file_name).split("'",1)[0]
foo_dlname = re.findall(r'\w*\.exe', fin_link[0])
fin_dlfolder = str(foo_dlfolder)+str(file_name)

print("Downloadordner: "+foo_dlfolder)
print("Download: "+file_name)

while dl_bool == "":
    print("Fortfahren J oder N?")
    dl_bool = input()

def download_dlink():
    urllib.request.urlretrieve(fin_link[0], fin_dlfolder)

if dl_bool == "J":
    print("DL gestartet...")
    download_dlink()
elif dl_bool == "j":
    print("DL gestartet...")
    download_dlink()
else:
    print("Danke bye")

원플(Oneplus 3t)에서 오픈파일럿 이식하려면?
------
1. 일단 /data 디렉토리에서 084 혹은 085 브렌치를 클론합니다(우선 제 브렌치로^^)
```
cd /data/ && rm -fr openpilot; git clone https://github.com/KimSangJo/085.git openpilot
```

2. 아래 명령 실행합니다
```
chmod 700 /data/openpilot/scripts/oneplus_update_neos.sh;
cd /data/openpilot/scripts/ && ./oneplus_update_neos.sh
```

3. 원플용 Neos(recovery, system 이미지)가 다운로드되면 자동으로 부팅됩니다. 
   두번 정도 리부팅되고 나면 fastboot 모드로 들어갑니다.

4. fastboot 모드에서 볼륨 상하버튼으로 리커버리모드 선택한 뒤 파워버튼으로 실행합니다. 

5. 리커버리 모드에서 차례대로 apply update` -> `Choose from emulated` -> `0/` -> `update.zip` -> `Reboot system now` 선택합니다.

 
6. 이로써 원플에서 오픈파일럿으로 부팅됩니다. 터치버튼이 먹히지 않으면 강제로 리부팅시킵니다.
   부팅후 와이파이에 접속하시고 ssh로 접속, 본인이 부여받은 id_rsa파일과 연결시켜 이온과 접속해서 원하는 파일들 수정하시면 됩니다.
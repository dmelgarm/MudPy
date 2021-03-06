%Make regions for filtering out insar points

%Specify path and filename for saving
fout='/Users/dmelgarm/Samos2020/InSAR/T131/samos_path.txt'

%read data
insar=csvread('/Users/dmelgarm/Samos2020/InSAR/T131/T131_asc.lltnde');
idecimate=1:100:length(insar);
lon =insar(idecimate,2);
lat=insar(idecimate,1);
los=insar(idecimate,7);

%Plot
scatter(lon,lat,10,los,'filled')

%Start interactive tool
h=impoly()

%Get selected path coordiantes
nodes=getPosition(h);

%Save to file
dlmwrite(fout,nodes,'delimiter','\t','precision',6)
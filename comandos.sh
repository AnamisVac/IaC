## instalacion de tfenvi para administrar versiones de terraform
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
ln -s ~/.tfenv/bin/* /usr/local/bin
tfenv install latest
tfenv use latest
terraform -v
echo ___________________________________________
echo ________________ instalando AWS cli __________________

## instalacion del cliente AWS para comucarse con servios de AWS
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

aws configure
cd terraform/
terraform init
terraform fmt --recursive
terraform apply -y
sleep 240
echo ________________________________________________________
echo ________________ TERMINANDO y eliminando __________________
terraform destroy -y
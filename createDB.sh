echo "Creating Database jwt and tables.....\n"

sudo mysqladmin -u root -pPassword@123 create jwt

mysql -u root -D mysql -pPassword@123 -e "use mysql;UPDATE user SET Host='%' WHERE Host='localhost' AND User='root';"

mysql -u root -pPassword@123 -e "use jwt;CREATE table USER (first_name, last_name, email, username, password, regdate);"

sudo systemctl restart mysql
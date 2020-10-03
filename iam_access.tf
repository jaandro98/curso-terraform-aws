#resource "aws_iam_group" "administradores" {
#    name = "Administradores"
#}
#
#resource "aws_iam_policy_attachment" "admin_attach" {
#    name = "admin_attach"
#    groups = [aws_iam_group.administradores.name]
#    policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
#}
#
#resource "aws_iam_user" "admin1" {
#    name = "admin1"
#}
#
#resource "aws_iam_user" "admin2" {
#    name = "admin2"
#}
#
#resource "aws_iam_group_membership" "admin_users" {
#    name = "admin_users"
#    users = [
#        aws_iam_user.admin1.name,
#        aws_iam_user.admin2.name,
#        
#   ]
#    group = aws_iam_group.administradores.name
#}
#
#resource "aws_iam_access_key" "admin1_accesskey" {
#    user = aws_iam_user.admin1.name
#}
#
#resource "aws_iam_access_key" "admin2_accesskey" {
#    user = aws_iam_user.admin2.name
#}
#
#output "admin1_accesskey_output" {
#    value = aws_iam_access_key.admin1_accesskey.id
#}
#
#output "admin1_scretkey_output" {
#    value = aws_iam_access_key.admin1_accesskey.secret
#}
#
#output "admin2_accesskey_output" {
#    value = aws_iam_access_key.admin2_accesskey.id
#}
#
#output "admin2_scretkey_output" {
#    value = aws_iam_access_key.admin2_accesskey.secret
#}






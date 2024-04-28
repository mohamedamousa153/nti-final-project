# Resource for AWS Backup plan
resource "aws_backup_plan" "jenkins_backup_plan" {
  name = "jenkins-backup-plan"

  rule {
    rule_name         = "daily-snapshot"
    target_vault_name = aws_backup_vault.backup_vault.name
    schedule          = var.corn_scema #Take snapshot daily at midnight

    # target_backup_vault {
    #   name = aws_backup_vault.backup_vault.name
    # }

    lifecycle {
      delete_after = var.rds_lifecycle
    }
  }
}



resource "aws_backup_selection" "backup_selection" {
  iam_role_arn = aws_iam_role.backup_role.arn
  name         = "daily_backup_selection"
  plan_id      = aws_backup_plan.jenkins_backup_plan.id

  resources = [
    aws_instance.jenkins_server.arn
  ]
}

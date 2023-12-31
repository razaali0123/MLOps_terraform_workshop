resource "aws_dynamodb_table" "tf_notes_table" { 
   name = "tf-dynamo-table-${var.user_name}" 
   billing_mode = "PROVISIONED" 
   read_capacity = "30" 
   write_capacity = "30" 
   attribute { 
      name = "noteId" 
      type = "S" 
   } 
   hash_key = "noteId" 

  tags = {
    Name   = var.user_name,
    project = var.project,
    user = var.user,
    validity = var.validity

  }

}







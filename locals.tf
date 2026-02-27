locals {
    common_tags = {
        project = var.project_name
        environment = var.environment
        terraform = true
    }

    vpc_final_tags = merge (
        common_tags,
        {
            Name = "${var.project_name}-${var.environment}"
        },
        var.vpc_tags)
    }

    

workspace {

    model {
        user = person "User"
        softwareSystem = softwareSystem "Software System" {
            webapp = container "Web Application" {
                user -> this "Uses"
            }
            container "Database" {
                webapp -> this "Reads from and writes to"
            }
        }
    }

    views {
        systemContext softwareSystem "ContextAlpha" {
            include *
            autolayout lr
        }

        container softwareSystem "ViewAlpha" {
            include *
            autolayout lr
        }

        theme default
    }

}

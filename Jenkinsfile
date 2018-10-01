@Library('ascent') _

dockerPipeline {
    dockerBuilds = [
        "ascent/redis-sentinel": ".",
    ]
    

    /*********  Deployment Configuration ***********/
    stackName = "cache"
    serviceName = "redis-master"

    vaultTokens = [
        "VAULT_TOKEN": "redis"
    ]

    //Default Deployment Configuration Values
    //composeFiles = ["docker-compose.yml"]
}

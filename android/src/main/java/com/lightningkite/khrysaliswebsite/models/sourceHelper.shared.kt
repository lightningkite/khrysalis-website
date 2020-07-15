package com.lightningkite.khrysaliswebsite.models

object SourceHelper {
    fun translatedFiles(repository: String, branch: String, projectName: String, projectPackage: String, file: String): List<GitHubFile> = listOf(
        GitHubFile(repository, branch,"android/src/main/java/${projectPackage.replace('.', '/')}/${file}.kt"),
        GitHubFile(repository, branch,"web/src/${file}.ts"),
        GitHubFile(repository, branch,"ios/$projectName/src/${file}.swift")
    )
    fun khrysalis(file: String, branch: String = "master") = translatedFiles(
        repository = "lightningkite/khrysalis",
        branch = branch,
        projectName = "Khrysalis",
        projectPackage = "com.lightningkite.khrysalis",
        file = file
    )
}
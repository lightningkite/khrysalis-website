package com.lightningkite.khrysaliswebsite.models

import com.lightningkite.khrysalis.Codable

data class GitHubFile(
    val repository: String,
    val branch: String = "master",
    val path: String
): Codable {
    val raw: String = "https://raw.githubusercontent.com/$repository/$branch/$path"
    val html: String = "https://github.com/$repository/blob/$branch/$path"
}
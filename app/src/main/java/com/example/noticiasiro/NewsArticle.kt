package com.example.noticiasiro

data class NewsArticle(
    val title: String,
    val description: String,
    val url: String,
    val urlToImage: String,
    val publishedAt: String,
    val source: Source
)

data class Source(
    val name: String
)

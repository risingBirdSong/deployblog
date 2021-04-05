module Web.View.Posts.Show where
import Web.View.Prelude

data ShowView = ShowView { post :: Include "comments" Post }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">Show Post</li>
            </ol>
        </nav>
        <h1>{get #title post}</h1>
        <p>{get #body post}</p>
        <hr>
        <p>{get #createdAt post |> timeAgo}</p>
        <hr>
        <a href={NewCommentAction (get #id post)}> add comment </a>
        {forEach (get #comments post) renderComment}
    |]

renderComment comment = [hsx|
    <hr>
    <h3>{get #author comment}</h3>
    <p> {get #body comment} </p>
|]
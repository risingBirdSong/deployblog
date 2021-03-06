module Web.View.Comments.Show where
import Web.View.Prelude

data ShowView = ShowView { comment :: Comment }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={CommentsAction}>Comments</a></li>
                <li class="breadcrumb-item active">Show Comment</li>
            </ol>
        </nav>
        <h1>Show Comment</h1>
        <p>{comment}</p>
        <hr>
        <!-- <a href={NewCommentAction (get #id post)}>add comment</a> -->
    |]

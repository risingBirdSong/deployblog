module Web.View.Comments.New where
import Web.View.Prelude

data NewView = NewView { comment :: Comment, post :: Post }

instance View NewView where
    html NewView { .. } = [hsx|     
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={CommentsAction}>Comments</a></li>
                <li class="breadcrumb-item active">New Comment</li>
            </ol>
        </nav>
        <h1>New Comment for ...<span>{get #title post}</span></h1>
        {renderForm comment}
    |]

renderForm :: Comment -> Html
renderForm comment = formFor comment [hsx|
    {(hiddenField #postId)}
    {(textField #author)}
    {(textField #body)}
    {submitButton}
|]

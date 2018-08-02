import React, { Component } from 'react'
import Form from "./components/post_form";
import PostIndex from "./components/post_index";
export default class componentName extends Component {
    constructor(props) {
        super(props);
        this.state = {
            photo: []
        }
        this.fetchPosts = this.fetchPosts.bind(this)
    }
    fetchPosts () {
        $.ajax({
            url: '/api/posts',
        }).then(posts => this.setState({ posts }))
    }

    componentDidMount() {
        this.fetchPosts();
    }

    render() {
        return (
            <div>
                <Form fetchPosts={this.fetchPosts} />
                <PostIndex posts={this.state.posts} />
            </div>
        )
    }
}

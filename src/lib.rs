use anyhow::Result;
use spin_sdk::{
    http::{Request, Response},
    http_component,
};

/// A simple Spin HTTP component.
#[http_component]
fn handle_spin_with_k8s(req: Request) -> Result<Response> {
    println!("{:?}", req.headers());
    Ok(http::Response::builder().status(200).body(Some(
        "Hello from a WASM based microservice running inside Kubernetes".into(),
    ))?)
}

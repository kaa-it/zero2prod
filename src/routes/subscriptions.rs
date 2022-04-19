use actix_web::{web, HttpResponse, Responder};

#[derive(serde::Deserialize)]
pub struct FormData {
    email: String,
    name: String,
}

pub async fn subscribe(_form: web::Form<FormData>) -> impl Responder {
    let _p = &_form.email;
    let _n = &_form.name;

    HttpResponse::Ok()
}

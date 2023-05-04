FROM scratch AS build
WORKDIR /app
COPY . .

FROM scratch
COPY --from=build /app/spin.toml .
COPY --from=build /app/target/wasm32-wasi/release/spin_with_k8s.wasm ./target/wasm32-wasi/release/spin_with_k8s.wasm

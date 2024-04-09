deploy: 
	doppler run -- terraform plan --out tf.out && doppler run -- terraform apply -auto-approve tf.out

plan:
	doppler run -- terraform plan

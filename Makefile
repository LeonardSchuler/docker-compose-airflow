.PHONY: start services stop

start: volumes
	docker-compose up -d
	xdg-open http://www.localhost:8080/admin/

volumes:
	mkdir -p volumes/airflow
	mkdir -p volumes/postgres
	chmod -vR 700 volumes/airflow
	chmod -vR 700 volumes/postgres
	# 50000 is the default user in the airflow image and 999 the postgres user
	sudo chown -vR 50000:50000 volumes/airflow && sudo chown -vR 999:999 volumes/postgres

stop:
	docker-compose down

clean: stop
	sudo rm -Rf volumes

FROM jupyter/pyspark-notebook

# Installer Sedona, Dask et bibliothèques cloud
RUN pip install \
    apache-sedona \
    dask[complete] \
    s3fs \
    gcsfs \
    adlfs \
    geopandas \
    rioxarray \
    xarray \
    hvplot \
    leafmap \
    keplergl \
    folium

# Exposer le port Jupyter
EXPOSE 8888

# Point d'entrée
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]

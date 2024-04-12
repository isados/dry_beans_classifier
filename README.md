<a name="readme-top"></a>

[![LinkedIn][linkedin-shield]][linkedin-url]



# Dry Beans Classifier: a Project using ML-Flow & Airflow 

![Pipelines](images/ml_pipelines.png)

In this repository, you'll find a project that classifies between 7 different types of dry beans with various shapes and features. [Dataset Source](https://www.kaggle.com/datasets/sansuthi/dry-bean-dataset)

The objective of this assignment is clear: 
* Build a Machine Learning model to classify the beans,
* Develop an MLOps architecture designed for a production environment.

To accomplish this task, **Airflow** and **Mlflow** are used to build Machine Learning Pipelines, fully customizable and ready for a production environment.

This Github repo is forked from [Jeremy's ML assignment work](https://github.com/jeremyarancio/reservation_cancellation_prediction), so all credit truly goes to him! Also do checkout his article on [Medium](https://medium.com/towards-data-science/build-machine-learning-pipelines-with-airflow-and-mlflow-reservation-cancellation-forecasting-da675d409842) explaining his work. 

## Code organization

```sh
.
├── README.md
├── airflow
│   └── dags
│       ├── inference_pipeline.py
│       └── training_pipeline.py
├── artifacts
├── data
│   ├── features_store
│   ├── preprocessed
│   ├── dry_bean.parquet
│   └── sample_for_inference.parquet
├── mlflow
├── notebooks
│   ├── 0_exploratory_data_analysis.ipynb
├── requirements.txt
├── Pipfile
├── Pipfile.lock
└── steps
    ├── condition_step.py
    ├── config.py
    ├── feature_engineering_step.py
    ├── inference_step.py
    ├── preprocess_step.py
    ├── train_step.py
    └── utils
        ├── _artifact.py
        └── data_classes.py
```

The repository is structured as follows:

* **Data Exploratory Analysis (EDA)** is performed on **notebooks**,
* Each stage of the Machine Learning process (**Preprocessing**, **Training**, **Inference**, etc...) is defined as a module designed to be implemented into a pipeline. They are all located in the *steps/* folder.
* **Airflow** and **Mlflow** are deployed locally within this repository.
* In the *data* folder; the original dataset is located that was provided for this project `Dry_Bean_Dataset.csv`, in addition to a sample for batch prediction. *data/features_store* and *data/preprocessed* are directories to store the data once processed by some stages of the pipelines, such as **preprocessing** or **features_engineering** steps.
* The same idea for *artifacts* that contains **encoders** generated during the **features_engineering** step.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## Getting started

The code runs with Airflow and Mlflow. 

To launch these applications, open a terminal for each and run the .sh command files `airflow_run.sh` & `run_mlflow.sh`, after you've installed them. The complete procedure can be found in the [article](https://medium.com/towards-data-science/build-machine-learning-pipelines-with-airflow-and-mlflow-reservation-cancellation-forecasting-da675d409842).


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
[linkedin-url]: https://www.linkedin.com/in/isadoseri/
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
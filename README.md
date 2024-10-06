# Clapstack

Clapstack is a robust, modular stack designed to streamline the development, orchestration, and deployment of data-intensive applications. With integrated tools for coding, data storage, workflow automation, and machine learning, Clapstack provides a versatile platform for developers working on advanced projects in AI, data engineering, and cloud-based pipelines.

### Core Components

- **code-server**: A browser-based Visual Studio Code environment, enabling you to code remotely with full VS Code functionality.
- **lanternDB**: A PostgreSQL-based database solution optimized for high-performance data storage and retrieval.
- **Apache Airflow**: A platform for automating, scheduling, and monitoring complex workflows and data pipelines.
- **PyTorch**: A powerful deep learning framework for building and training machine learning models with GPU acceleration.

## Installation

To get started with Clapstack, follow these steps:

### 1. Install Portainer
You will first need to set up **Portainer** for managing your Docker environment. Follow the official documentation to install Portainer on your system:

- [Portainer Official Installation Guide](https://docs.portainer.io/start/install/server/docker)

### 2. (Optional) Install NVIDIA Container Runtime
If you plan to utilize **GPU acceleration** with PyTorch or other components in Clapstack, it is recommended to install the NVIDIA Container Runtime. Follow the official documentation to install it:

- [NVIDIA Container Runtime Installation Guide](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)

Once these dependencies are installed, you can proceed with deploying the Clapstack services using `docker-compose`. Detailed setup instructions will follow in the next section.


## Starting the Clapstack in Portainer

Follow these steps to set up Clapstack in Portainer. The default port for Portainer's web interface is `9443`.



### 1. Clone the Repository

First, clone the Clapstack repository to your local machine:

```bash
git clone https://github.com/your-username/clapstack.git
cd clapstack
```

### 2. Access Portainer Web Interface

Open a browser and navigate to `https://localhost:9443` (or replace `localhost` with your server’s IP address if you're running Portainer remotely).

### 3. Add a New Stack

1. Click on **Stacks** in the sidebar.
2. Click on the **Add Stack** button.

### 4. Upload Docker Files

1. Choose the **Upload** option.
2. Provide a name for the stack (e.g., "Clapstack").
3. Upload the included `docker-compose.yml` file from the cloned repository.
4. Upload the included `stack.env` file.

### 5. Populate the Absolute Path Variable

Ensure to populate any necessary absolute path variables in the `stack.env` file as required by your setup.

### 6. Deploy the Stack

1. Scroll down and click **Deploy the Stack**.
2. Portainer will now pull the necessary Docker images and start the services.

## Port Mappings and Credentials

| Service            | Port   | Username  | Password   |
|--------------------|--------|-----------|------------|
| LanternDB           | 15432  | postgres  | postgres   |
| LanternDB Logging   | 16432  | -         | -          |
| Airflow Webserver   | 18080  | user      | airflow    |
| Dozzle Webservice   | 19999  | -         | -          |
| DBGate Webservice   | 13000  | -         | -          |
| code-server Webservice | 18443  | -         | password   |
| Dashy Webservice    | 20000  | -         | -          |

Please ensure these ports are available and adjust as needed for your environment.

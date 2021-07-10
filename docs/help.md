# Help

1. Activating a package manager from Julia and installing from the `Project.toml`

    ```julia
    ]
    activate .
    instantiate
    ```

2. Running a script while activating a local environment defined by a `Project.toml`

    ```bash
    julia --project=. 1_data.jl
    ```

3. Adding to the existing packages

    ```julia
    ]
    add Downloads
    ```

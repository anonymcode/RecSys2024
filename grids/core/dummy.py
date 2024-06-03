trial_params = dict(
    seed = (0, 2**31-1),
)

fixed_params = dict(
    max_epochs = 100,
    step_replacement = 'max_epochs' # during tests, max value will be replaced with an optimal one
)
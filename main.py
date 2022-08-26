import os
import iio
import numpy as np

def main(input, output, sigma):
    u = iio.read(input)
    print("hello world", u.shape)

    v = u + np.random.randn(*u.shape) * sigma

    iio.write(output, v)

if __name__ == "__main__":
    input = "input_0.png"
    sigma = float(os.environ['sigma'])
    main("input_0.png", "output.png", sigma)

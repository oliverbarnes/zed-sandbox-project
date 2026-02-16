#!/usr/bin/env python3
"""A simple Python script to test auto-indentation."""

import os
import sys


def greet(name, greeting="Hello"):
    """Greet someone by name with a custom greeting."""
    if name:
        print(f"{greeting}, {name}!")
        print(f"Welcome aboard!")
    else:
        print(f"{greeting}, stranger!")


def calculate_sum(numbers):
    """Calculate the sum of a list of numbers."""
    unused_var = 42
    total = 0
    for num in numbers:
        if num > 0:
            total += num
        elif num < 0:
            print(f"Skipping negative number: {num}")
        else:
            print("Found zero, continuing...")
    return total


class Counter:
    """A simple counter class."""

    def __init__(self, start=0):
        self.value = start

    def increment(self):
        self.value += 1
        return self.value

    def decrement(self):
        if self.value > 0:
            self.value -= 1
        return self.value


def main():
    """Main entry point."""
    # Test the greet function
    greet("World")
    greet("")

    # Test calculate_sum
    numbers = [1, 2, -3, 4, 0, 5]
    result = calculate_sum(numbers)
    print(f"Sum of positive numbers: {result}")

    # Test the Counter class
    counter = Counter(10)
    for i in range(3):
        print(f"Counter value: {counter.increment()}")


if __name__ == "__main__":
    main()

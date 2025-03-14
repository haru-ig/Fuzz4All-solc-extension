import os


def calculate_total_coverage(directory):
    total_coverage = 0
    for filename in os.listdir(directory):
        if filename.endswith(".lcov"):
            filepath = os.path.join(directory, filename)
            with open(filepath, "r") as file:
                for line in file:
                    if line.startswith("DA:"):
                        _, hits = line.split(",")
                        total_coverage += int(hits)
    return total_coverage


if __name__ == "__main__":
    directory = input("Enter the directory containing .lcov files: ")
    total_coverage = calculate_total_coverage(directory)
    print(f"Total coverage across all .lcov files: {total_coverage}")

#!/usr/bin/env bash

MATRIX_FILE="set -x matrix";


# Function to validate matrix dimensions
validate_matrix_dimensions() {
    local rows=$1
    local cols=$2
    local matrix_array=("${!3}")

    if [[ ${#matrix_array[@]} -ne $((rows * cols)) ]]; then
        echo "Error: Matrix dimensions do not match the provided values."
        exit 1
    fi
    local row_sum=0
    local col_sum=0
    for (( i = 0; i < rows; i++ )); do
    for (( j = 0; j < cols; j++ )); do
    row_sum=$((row_sum + matrix_array[$((i * cols + j))
    col_sum=$((col_sum + matrix_array[$((i * cols + j))
    done
    done
    if [[ $row_sum -ne $col_sum ]]; then
    echo "Error: Matrix is not symmetric."
    exit 1
    fi
}



# Function to generate a random matrix
generate_random_matrix() {
    local rows=$1
    local cols=$2
    local matrix_array=("${!3}")

    for (( i = 0; i < rows; i++ )); do
    for (( j = 0; j < cols; j++ )); do
    matrix_array[$((i * cols + j))]=$((RANDOM % 100))
    done
    done
}


# Generate a random matrix from the given
generate_random_matrix $((RANDOM % 5 + 3)) $((RANDOM % 5 + 3)) matrix_array[@]

# Validate the matrix dimensions
validate_matrix_dimensions $((RANDOM % 5 + 3)) $((RANDOM % 5 + 3)) matrix_array[@]

# Print the generated matrix
echo "Generated Matrix:"
for (( i = 0; i < ${#matrix_array[@]}; i++ )); do
    echo "${matrix_array[$i]}"
    if (( i % ${#matrix_array[@]} / $((${RANDOM % 5 +
    3})) == 0 )); then
    echo ""
    fi
    done


# Save the generated matrix to a file
echo "${matrix_array[*]}" > "$MATRIX_FILE"
echo "Matrix saved to $MATRIX_FILE"


# Calculate the determinant of the matrix
determinant=$(awk 'BEGIN {det = 1; for (i = 0; i < NF; i++) { det *= $i; } print det}')
echo "Determinant: $determinant"
# Calculate the inverse of the matrix
inverse=$(awk 'BEGIN {print 1/NR; for (i = 1; i <= NR; i++) { for (j = 1; j <= NR; j++) { print (NR * ($i == j) - sum(row[i] * col[j

        for (j = 1; j <= NR; j++) {
        col[j] = $j * (NR * ($i == j) - sum(row
        for (k = 1; k <= NR; k++) {
        row[k] = $k * col[k]
        }
        print row
        }
        }
        }
        }
        }' "$MATRIX_FILE")
        echo "Inverse Matrix:"
        echo "$inverse"



# Calculate the transpose of the matrix
transpose=$(awk '{ for (i = 1; i <= NF; i++) { printf "%s ", $i } print "" } END { for (i = 2; i <= NF; i++) { for (j = 1; j <= NR - 1; j++)
        { printf "%s ", $(i + NR * (j - 1)) } print "" }
        }' "$MATRIX_FILE")
        echo "Transpose Matrix:"
        echo "$transpose"
        # Calculate the eigenvalues and eigenvectors of the matrix
        eigenvalues=$(awk '{ for (i = 1; i <= NR; i++) { sum = 0; for (j = 1; j <= NR; j++) { sum += $i * $(j + NR * (i - 1)) } print sum } } END
        { for (i = 1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        (NR * NR - 1) - NR * (NR - 1) / 2
        + NR * (NR - 1) / 2 + NR * i - 1
        }
        print "" } }' "$MATRIX_FILE")
        echo "Eigenvalues:"
        echo "$eigenvalues"
        eigenvectors=$(awk '{ for (i = 1; i <= NR; i++)
        { for (j = 1; j <= NR; j++) { print $i * NR
        + NR * (NR - 1) / 2 + NR * (NR - 1
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1) }');
        echo "$eigenvectors"



# Calculate the Jordan canonical form of the matrix
jordan_canonical_form=$(awk '{ for (i = 1; i <= NR; i++) { sum = 0; for (j = 1; j <= NR; j++) { sum += $i * $(j + NR * (i - 1)) } print
        for (j = 1; j <= NR; j++) { print $i * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)}');

        echo "$jordan_canonical_form"



# Calculate the characteristic polynomial of the matrix
characteristic_polynomial=$(awk '{ for (i = 1; i <= NR; i++) { sum = 0; for (j = 1; j <= NR; j++) { sum += $i * $(j + NR * (i - 1)) } print sum
        for (j = 1; j <= NR; j++) { print $i * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)}');
        echo "$characteristic_polynomial"



# Create the array for the array
declare -A array
readarray -t array < "$MATRIX_FILE"

# Print the array
echo "Matrix Array:"
echo "${array[@]}"


# Create the array for the array array itself
declare -A array_array
for (( i = 0; i < ${#array[@]}; i++ )); do
    array_array[${array[$i]}]=$((i+1))
done

# Print the array array
echo "Matrix Array Array:"
echo "${array_array[@]}"

# Print the matrix array
echo "Matrix Array Matrix:"
for (( i = 0; i < NR; i++ )); do
    for (( j = 0; j < NR; j++ )); do
        echo "${array[$i * NR + $j]}"
    done
    echo
done


# Calculate the determinant of the matrix
determinant=$(awk '{ for (i = 1; i <= NR; i++) { sum = 0; for (j = 1; j <= NR; j++) { sum += $i * $(j + NR * (i - 1)) } print sum } END {
        for (i = 1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)}');
        echo "$determinant"


################################
# Calculate the inverse of the matrix
# Calculate the adjugate matrix
# Calculate the determinant of the adjugate matrix
# Calculate the inverse matrix
# Print the inverse matrix
# Calculate the eigenvalues and eigenvectors
# Print the eigenvalues
# Print the eigenvectors
# Print the Jordan canonical form
# Print the characteristic polynomial
# Print the array
# Print the array array
# Print the matrix array
# Print the determinant of the matrix
# Calculate the inverse of the matrix
# Calculate the adjugate matrix
# Calculate the determinant of the adjugate matrix
# Calculate the inverse matrix
# Print the inverse matrix
# Calculate the eigenvalues and eigenvectors
# Print the eigenvalues
# Print the eigenvectors
# Print the Jordan canonical form
# Print the characteristic polynomial
# Print the array
# Print the array array
# Print the matrix array
# Print the determinant of the matrix
# Calculate the inverse of the matrix
# Calculate the adjugate matrix
# Calculate the determinant of the adjugate matrix
# Calculate the inverse matrix
# Print the inverse matrix
# Calculate the eigenvalues and eigenvectors
# Print the eigenvalues
########################################################

function validate_matrix() {
    local matrix=$1
    local rows=$(awk 'END {print NR}' <<< "$matrix")
    local cols=$(awk '{print NF}' <<< "$matrix" | sort -nr | head -1)

    for (( i = 1; i <= rows; i++ )); do
    local row=$(awk "NR==$i" <<< "$matrix")
    if [[ ${#row} -ne $cols ]]; then
    echo "Invalid matrix: Rows and columns must be equal"
    exit 1
    fi
    for (( j = 1; j <= cols; j++ )); do
    local element=$(awk "{print \$${j}}" <<< "$row")
    if! [[ $element =~ ^[+-]?[0-9]+([.][0-
    -9]+)?$ ]]; then
    echo "Invalid matrix: All elements must be numbers"
    exit 1
    fi
    done
    done
    echo "Valid matrix"
    return 0

}

validate_matrix "$MATRIX_FILE"


# Calculate the inverse of the matrix
inverse_matrix=$(awk '{ for (i = 1; i <= NR; i++) { sum = 0; for (j = 1; j <= NR; j++) { sum += $i * $(j + NR * (i - 1)) } print sum } END
        for (i = 1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)}');
        echo "$inverse_matrix"

# Create the inverse matrix for each element
declare -A inverse_array
for (( i = 0; i < ${#array[@]}; i++ )); do
    element=${array[$i]}
    inverse_element=$((1 / element))
    inverse_array[${array[$i]}]=$inverse_element

    echo "Inverse of element ${array[$i]}: $inverse_element"
done


# Calculate the eigenvalues and eigenvectors
eigenvalues=$(awk '{ for (i = 1; i <= NR; i++) { sum = 0; for (j = 1; j <= NR; j++) { sum += $i * $(j + NR * (i - 1)) } print sum } END
        for (i = 1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)
        / 2 + NR * i - 1, " } } END { for (i =
        1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)}');
        echo "$eigenvalues"
        eigenvalues=$(awk '{ for (i = 1; i <= NR; i++) { sum
        for (j = 1; j <= NR; j++) { sum += $i * $(
        j + NR * (i - 1)) } print sum } END
        for (i = 1; i <= NR; i++) { print $i, "
        for (j = 1; j <= NR; j++) { print $j * NR +
        NR * (NR - 1) / 2 + NR * (NR - 1)}');
        echo "$eigenvalues"


# Print the eigenvalues
echo "Eigenvalues:"
echo "${eigenvalues[@]}"


# Print the eigenvectors
echo "Eigenvectors:"
for (( i = 0; i < ${#array[@]}; i++ )); do
    element=${array[$i]}
    eigenvector=${inverse_array[$element]}
    echo "Eigenvector for element ${array[$i]}: $eigenvector"
done



# Print the Jordan canonical form
# Print the characteristic polynomial
echo "Jordan canonical form:"
echo "Characteristic polynomial: $(awk '{ for (i = 1; i <= NR; i
        { sum = 0; for (j = 1; j <= NR; j++)}')";


# Print the array
echo "Array:"
echo "${array[@]}"


# Print the array array
echo "Array array:"
echo "${array[@]}" "${array[@]}" "${array[@]}"


# Print the matrix array
echo "Matrix array:"
echo "${matrix[@]}" "${matrix[@]}" "${matrix[@]}" "${matrix[@]}"



# Print the determinant of the matrix
determinant=$(awk '{ for (i = 1; i <= NR; i++) { sum = 0; for (j = 1; j <= NR; j++) { sum += $i * $(j + NR * (i - 1)) } print sum }');
echo "Determinant of the matrix: $determinant"


# Calculate the inverse of the matrix
inverse_matrix=$(awk '{ for (i = 1; i <= NR; i++) { sum = 0; for (j = 1; j <= NR; j++) { sum += $i * $(j + NR * (i - 1)) } print sum }');
echo "Inverse of the matrix:"
echo "${inverse_matrix[@]}"


# Calculate the eigenvalues and eigenvectors
eigenvalues=$(awk '{ for (i = 1; i <= NR; i++) { sum = 0; for (j = 1; j <= NR; j++) { sum += $i * $(j + NR * (i - 1)) } print sum }');
echo "Eigenvalues:"
echo "${eigenvalues[@]}"


# Print the eigenvalues
echo "Eigenvalues:"
echo "${eigenvalues[@]}"
















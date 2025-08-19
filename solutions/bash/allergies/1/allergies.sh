#!/usr/bin/env bash

# Allergens and their values
allergens=("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats")
values=(1 2 4 8 16 32 64 128)

allergic_to() {
    local score=$1
    local allergen=$2
    score=$((score & 255))  # ignore bits > 128

    for i in "${!allergens[@]}"; do
        if [[ "${allergens[i]}" == "$allergen" ]]; then
            if (( score & values[i] )); then
                echo "true"
            else
                echo "false"
            fi
            return
        fi
    done

    # If allergen not in list, always false
    echo "false"
}

list() {
    local score=$1
    score=$((score & 255))  # ignore bits > 128
    local results=()

    for i in "${!values[@]}"; do
        if (( score & values[i] )); then
            results+=("${allergens[i]}")
        fi
    done

    # Print space-separated list, or nothing if empty
    echo "${results[*]}"
}

# ---- Entry point ----
score=$1
command=$2

case "$command" in
    allergic_to)
        allergen=$3
        allergic_to "$score" "$allergen"
        ;;
    list)
        list "$score"
        ;;
    *)
        echo "Usage: $0 <score> {allergic_to <allergen> | list}"
        exit 1
        ;;
esac

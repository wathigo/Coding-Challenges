def partition(nums, low, high)
    i = low -1 
    j = low
    pivot = nums[high]
    
    while j < high
        if nums[j] < pivot
            i += 1
            nums[i], nums[j] = nums[j], nums[i]
        end
        j += 1
        
    end
    
    nums[i+1], nums[high] = nums[high], nums[i+1]
    i + 1
end

def sort_array(nums, low=0, high=nums.length-1)
    if low < high
        pi = partition(nums, low, high)
        sort_array(nums, low, pi - 1)
        sort_array(nums, pi + 1, high)
    end
    nums 
end

## Peudocode
# Create a sort_array method that accepts arrays to be sorted, low, and high representing lowest and highest indexes respectively.
# Have two variables, low, to store the lowest index, high, to store the lowest index
# Choose the last item in the array as the pivot
# Check if the lowest value is less that the highes value(base case for our recursive strategy)
# Create a partition method the does the following:
# 1. Initializes pivot variable with the value store at the highest index.
# 2. Initializes a variable i to the lowest index-1.
# 2. Iterates though the array starting from the lowest value to the highest.
# 3. Checks wheather the current value in iteration is lestt than the pivot. If true:
#    * Increment the value of i
#    * Swap the value of the current item index with i
# 4. Swap the value of i+1 and the value at the highest index.
# 5. Return the value of i + 1, to be used in the subsequent recursive calls.
# Call sort_array method on the left side and right side guided by the value of the pivot.
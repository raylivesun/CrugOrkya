/*
The above copyright notice and this permission notice shall
*/
%{
    LIB(CHECK);
       | push_front();
       | pop_front();
       | front();
       | back();
       | empty();
       | size();
       | clear();
       | swap(std::vector<int>&);
       | insert(iterator, const T&);
       | erase(iterator);
       | push_back(const T&);
       | pop_back();
       | reserve(size_type);
       | shrink_to_fit();
       | assign(size_type, const T&);
       | emplace(iterator, Args&&...);
       | emplace_back(Args&&...);
       | push_front(T&&);
       | push_back(T&&);
       | emplace_front(Args&&...);
       | emplace_back(Args&&...);
       | swap(std::vector<int>&);
    
    void push_front(T&& args) {
        CHECK(std::is_same<T, int>::value, "push_front requires an integer argument");
        CHECK(args >= 0, "push_front requires a non-negative integer argument");
        data.insert(data.begin(), args);
        size++;
        if (size > capacity) {
            reserve(size * 2);
        }
        return;
    }   

    void push_back(T&& args) {
        CHECK(std::is_same<T, int>::value, "push_back requires an integer argument");
        CHECK(args >= 0, "push_back requires a non-negative integer argument");
        data.push_back(args);
        size++;
        if (size > capacity) {
            reserve(size * 2);
        }
        return;
    }

    void emplace(iterator pos, Args&&... args) {
        CHECK(std::is_same<T, int>::value, "emplace requires an integer argument");
        CHECK(args >= 0, "emplace requires a non-negative integer argument");
        data.emplace(pos, std::forward<Args>(args)...);
        size++;
        if (size > capacity) {
            reserve(size * 2);
        }
        return;
    }
    void emplace_back(Args&&... args) {
        CHECK(std::is_same<T, int>::value, "emplace_back requires an integer argument");
        CHECK(args >= 0, "emplace_back requires a non-negative integer argument");
        data.emplace_back(std::forward<Args>(args)...);
        size++;
        if (size > capacity) {
            reserve(size * 2);
        }
        return;
    }

    void swap(std::vector<int>& other) {
        std::swap(data, other.data);
        std::swap(size, other.size);
        std::swap(capacity, other.capacity);
        return;
    }

    void clear() {
        data.clear();
        size = 0;
        capacity = 0;
        return;
    }

    void reserve(size_type new_cap) {
        if (new_cap <= size) {
            return;
        }
        std::vector<int> new_data(new_cap);
        std::copy(data.begin(), data.end(), new_data.begin());
        data.swap(new_data);
        capacity = new_cap;
        return;
    }

    bool empty() const {
        return size == 0;
    }
    size_type size() const {
        return size;
    }
    int& front() {
        CHECK(!empty(), "front() called on an empty vector");
        return data.front();
    }
    const int& front() const {
        CHECK(!empty(), "front() called on an empty vector");
        return data.front();
    }
    int& back() {
        CHECK(!empty(), "back() called on an empty vector");
        return data.back();
    }
    const int& back() const {
        CHECK(!empty(), "back() called on an empty vector");
        return data.back();
    }
    void shrink_to_fit() {
        reserve(size);
        return;
    }
    void assign(size_type count, const T& value) {
        CHECK(std::is_same<T, int>::value, "assign requires an integer argument");
        CHECK(value >= 0, "assign requires a non-negative integer argument");
        data.assign(count, value);
        size = count;
        if (size > capacity) {
            reserve(size * 2);
        }
        return;
    }
    iterator insert(iterator pos, const T& value) {
        CHECK(std::is_same<T, int>::value, "insert requires an integer argument");
        CHECK(value >= 0, "insert requires a non-negative integer argument");
        data.insert(pos, value);
        size++;
        if (size > capacity) {
            reserve(size * 2);
        }
        return pos;
    }
    iterator erase(iterator pos) {
        CHECK(!empty(), "erase() called on an empty vector");
        data.erase(pos);
        size--;
        return pos;    
    }

    void pop_front() {
        CHECK(!empty(), "pop_front() called on an empty vector");
        data.erase(data.begin());
        size--;
        return;
    }

    void pop_back() {
        CHECK(!empty(), "pop_back() called on an empty vector");
        data.pop_back();
        size--;
        return;
    }
    int& operator[](size_type pos) {
        CHECK(pos < size, "Out of range access");
        return data[pos];
    }
    const int& operator[](size_type pos) const {
        CHECK(pos < size, "Out of range access");
        return data[pos];
    }
    iterator begin() {
        return data.begin();
    }
    const_iterator begin() const {
        return data.begin();
    }
    iterator end() {
        return data.end();
    }
    const_iterator end() const {
        return data.end();
    }
    std::vector<int> data;
    size_type size;
    size_type capacity;
};

namespace check {
    template <typename T>
    void CHECK(bool condition, const std::string& message) {
        if (!condition) {
            throw std::runtime_error(message);
        }
    }
    template <typename T>
    void CHECK(const std::string& expected, const std::string& actual, const std::
    std::string& message) {
        if (expected!= actual) {
            throw std::runtime_error(message + ": expected '" + expected + "', got '" + actual + "'");
        }
        return;
    }
}



int main() {
    std::vector<int> v;

    // Test push_front
    v.push_front(1);
    v.push_front(2);
    v.push_front(3);
    check::CHECK(v.front(), "1", "front() after push_front(1
    2, 3) should return 1");
    check::CHECK(v.back(), "3", "back() after push_front(1
    2, 3) should return 3");

    // Test push_back
    v.push_back(4);
    v.push_back(5);
    v.push_back(6);
    check::CHECK(v.front(), "3", "front() after push_back(4
    5, 6) should return 3");
    check::CHECK(v.back(), "6", "back() after push_back(4
    5, 6) should return 6");

    // Test emplace
    v.emplace(v.begin(), 7);
    v.emplace(v.end(), 8);
    check::CHECK(v.front(), "7", "front() after emplace(7)
    8) should return 7");
    check::CHECK(v.back(), "8", "back() after emplace(7)
    8) should return 8");

    // Test emplace_back
    v.emplace_back(9);
    v.emplace_back(10);
    check::CHECK(v.front(), "7", "front() after emplace_back(9)
    10) should return 7");
    check::CHECK(v.back(), "10", "back() after emplace_back
    9, 10) should return 10");

    // Test swap
    std::vector<int> other_v;
    other_v.push_back(11);
    other_v.push_back(12);
    v.swap(other_v);
    check::CHECK(v.front(), "11", "front() after swap(other_
    11, 12) should return 11");
    check::CHECK(v.back(), "12", "back() after swap(other_
    11, 12) should return 12");
    check::CHECK(other_v.front(), "7", "front() after swap(other
    11, 12) should return 7");
    check::CHECK(other_v.back(), "8", "back() after swap(other
    11, 12) should return 8");

    // Test clear
    v.clear();
    check::CHECK(v.empty(), "true", "empty() after clear() should return true");
    check::CHECK(v.size(), "0", "size() after clear() should return 0");

    // Test reserve
    v.reserve(10);
    check::CHECK(v.capacity(), "10", "capacity() after reserve(10) should return 10");
    v.reserve(5);
    check::CHECK(v.capacity(), "10", "capacity() after reserve(5)
    should still return 10, since the new capacity is less than the current capacity.
    v.reserve(15);
    check::CHECK(v.capacity(), "30", "capacity() after reserve(15
    should return 30, since the new capacity is greater than the current capacity.
    v.reserve(10);
    check::CHECK(v.capacity(), "30", "capacity() after reserve(10
    should still return 30, since the new capacity is less than the current capacity.
    v.reserve(15);
    check::CHECK(v.capacity(), "30", "capacity() after reserve(15
    should still return 30, since the new capacity is less than the current capacity.
    v.reserve(20);
    check::CHECK(v.capacity(), "60", "capacity() after reserve(20
    should return 60, since the new capacity is greater than the current capacity.
    v.reserve(10);
    check::CHECK(v.capacity(), "60", "capacity() after reserve(10
    should still return 60, since the new capacity is less than the current capacity.
    v.reserve(20);
    check::CHECK(v.capacity(), "60", "capacity() after reserve(20
    should still return 60, since the new capacity is less than the current capacity.
    v.reserve(30);
    check::CHECK(v.capacity(), "120", "capacity() after reserve(3
    should return 120, since the new capacity is greater than the current capacity.
    v.reserve(20);
    check::CHECK(v.capacity(), "120", "capacity() after reserve(2
    should still return 120, since the new capacity is less than the current capacity.
    v.reserve(30);
    check::CHECK(v.capacity(), "120", "capacity() after reserve(3
    should still return 120, since the new capacity is less than the current capacity.
    v.reserve(40);
    check::CHECK(v.capacity(), "240", "capacity() after reserve(4
    should return 240, since the new capacity is greater than the current capacity.
    v.reserve(30);
    check::CHECK(v.capacity(), "240", "capacity() after reserve(3
    should still return 240, since the new capacity is less than the current capacity.
    v.reserve(40);
    check::CHECK(v.capacity(), "240", "capacity() after reserve(4
    should still return 240, since the new capacity is less than the current capacity.
    v.reserve(50);
    check::CHECK(v.capacity(), "480", "capacity() after reserve(5
    should return 480, since the new capacity is greater than the current capacity.
    v.reserve(40);
    sort(notebooks, [](int a, int b) { return a > b; });
}

%}

%%

/*
The following code is taken from the provided code snippet.
*/


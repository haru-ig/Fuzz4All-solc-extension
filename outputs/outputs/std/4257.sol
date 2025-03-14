pragma solidity ^0.8.0;
contract TestContract {
    IArray public foo;
    enum TestEnum {
        test,
        bar
    }
    mapping(uint256 => uint256) public bar;
    uint public constant fooOffset = 123;
    uint256[] public numbers = new uint256[](312);
    uint256 public len;
    uint256 public min, max;

    function TestContract() {
        len = 100;
        foo = IArray(msg.sender);
        for (uint256 i = 0; i < 312; i++) {
            numbers[i] = i * 57302;
        }
        bar[12] = 0;
        bar[18] = 0;
        bar[19] = 0;
        bar[21] = 0;
    }

    function push(uint256 val) external {
        foo.push(val);
        bar[msg.sender] += val;
    }
    function pop(uint256 len) public {
        uint256 val = foo.pop(len);
        bar[msg.sender]--;
        if (len > 0) {
            for (uint256 i = 0; i < len; i++) {
                if (numbers[i]!= val) {
                    break;
                }
            }
            return;
        }
        if (val < 11) {
            break;
        }
        numbers[0] = 12;
    }

    function set(uint256 index, uint256 val, uint256 len) external {
        foo.set(index, val, len);
        bar[msg.sender] -= val;
        if (val > 100) {
            if (index % 6 == 0) {
                for (uint256 i = 0; i < len; i++) {
                    if (foo.get(index, i) < foo.getMax(i)) {
                        foo.set(index, foo.getMax(i), i);
                    }
                }
            }
        } else if (val < 0) {
            foo.reverse(len);
        }
        if (val == 0 || val == 98) {
            return;
        }
        for (uint256 i = 0; i < len; i++) {
            if (foo.get(index

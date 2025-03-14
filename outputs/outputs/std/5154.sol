pragma solidity ^0.8.0;
contract Array {
    uint[] array;

    function f(uint a, uint b) public pure {
        uint[] memory tmp;
    }

    function g(uint a) public pure {
        for (uint i = 0; i < a; ++i) {
            uint x = 0;
        }
    }

    function h(uint a) public pure {
        uint[] memory tmp = [a];
    }


    function setArray(uint[] memory a) public pure {
        array = a;
    }

    function setArrayNull() public pure {
        array = null;
    }

    function prependTo(uint i) public pure {
        array = new uint[](0);
        array = array.concat(array);
        array.push(i);
    }

    function extend(uint[] memory a) public pure {
        array = array.concat(a);
    }

    function concat(uint[] memory a) public pure {
        array = array.concat(a);
    }

    function slice(uint start, uint len) public pure {
        array = array[start:start+len];
    }

    function setSlice(uint a, uint[] memory b) public pure {
        array[a] = b;
    }

    function get(uint a) public pure {
        require(a < array.length, "not present");
        array[a];
    }

    function add(uint b) public pure {
        array.push(b);
    }

    function sub(uint a, uint b) public pure {
        require(array[a] >= b, "value not greater");
        uint index = 0;
        while (index < a && array[index] < b) index++;
        array[index] = array[index].sub(b);
    }

    function mul(uint b) public pure {
        for (uint i = 0; i < array.length; ++i) {
            array[i] = array[i].mul(b);
        }
    }

    function div(uint a, uint b) public pure {
        uint remainder = a.mod(b);
        a = a.div(b);
        while (remainder!= 0) {
            a = a.add(1);
            remainder = remainder.sub(1);
        }
        array[a] = a;
    }

    function lt(uint a, uint b) public pure {
        while (a!= 0) {
            uint quot = a.div(b);
            a = a.mod(b);
            b = b.sub(1);
            if (quot > 0) {
                array.push(1);
            }
            if (a == 0) {
                return;
            }
        }
    }

    function lte(uint a, uint b) public pure {
        while (a <= b) {
            uint quot = a.div(b);
            a = a.mod(b);
            b = b.sub(1);
            if (quot > 0) {
                array.push(1);
            }
            if (a == 0) {
                return;
            }
        }
    }
    function gt(uint

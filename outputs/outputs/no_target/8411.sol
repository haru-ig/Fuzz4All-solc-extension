pragma solidity ^0.8.0;
contract A {
    address c;
    function foo(bool b) public payable returns(uint) {
        c = msg.sender;
        uint sum = block.blockhash(blockhash(block.number - 1));
        if (!b) return sum;
        a = (msg.sender^1);
        bool success;
        unchecked{
            a = a.add(_value);
            failureCase:
                if (b) {
                    success = true;
                    a = a.add(uint(a));
                }
                else {
                    success = false;
                }

                if (!a) {

                    require(a >= 1, 'FAIL(0)');
                    _bts = 1111;
                    b = true;
                    goto successCase;




                }
            success
            else {
                require(a <= _value);
            }

            _bts = 2;
            b = true;
            if (!b) {
                _bts = 3;
                b = false;
                goto successCase;
            }

            _bts = 4;
            a = a + uint(uint(-(_value + (1 << 8)))));
            uint(uint(a));
        }
    }
}

pragma solidity ^0.8.0;
contract C {

    function foo0(bytes memory _data)  public {
        uint8 _foo0Result;
        bool _foo0Cond = true;
        emit Foo0(_foo0Cond, _foo0Cond? _data : 0x0);
        function f() public {
            bool y = true;
            assembly {
                _foo0Result := f()
                _foo0Cond := and(y, _foo0Result)
            }
        }
    }
    () public {}
}

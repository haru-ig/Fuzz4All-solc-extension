pragma solidity ^0.8.0;

contract SemanticallyNotEquivalent9 {

    function destroy() public  {
        removeAddress();
    }

    function destroy2(address a) public  {
        removeAddress(a);
    }

    function removeAddress(address _a) private {
        if (a > _a) {
            address a2 = _a;
            _a = a2;
            address a3 = _a;
        }

        return;
    }
}


contract SemanticallyEquivalent9 {
     function destroy() public  {
        removeAddress(address(this));
    }

    function removeAddress(address _a) private {
        if (a == add(1)) {
            a = _a;
        }

        if (a >= add(2)) {
            a = _a;
        }

        return;
    }
}

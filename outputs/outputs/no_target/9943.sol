pragma solidity ^0.8.0;
contract widerWrapper {
}
pragma solidity ^0.8.0;
contract x {
    function f(uint) {

        (bool success, bool success0, bool success1, bool success2, bool success3) = widerWrapper.call.value(1000)("");

        (bool success0, bool success1, bool success2, bool success3) = widerWrapper.call.value(1000)("");

        (bool success0, bool success1, bool success2, bool success3) = widerWrapper.call.value(1000)(0);

        (success, success0, success1, success2, success3) = widerWrapper.call.value(1000)("");

        (success0, success1, success2, success3) = widerWrapper.call.value(1000)(0);
    }
    function f2(bool a) {

        a = a < (0x1000 / gas);

        (a, a, a, a, a) = widerWrapper.call(address(widerWrapper));

        (a, a, a, a, a) = widerWrapper.call(address(widerWrapper));

        (a, a, a, a, a) = WiderWrapper.call();

        (success, success0, success1, success2, success3) = WiderWrapper.send(address(widerWrapper));

        (success0, success1, success2, success3) = WiderWrapper.send(address(widerWrapper));

        (success0, success1, success2, success3) = WiderWrapper.sendValue(address(widerWrapper), 500);
    }
    function f3(bool a) {

        a = a < (0x1000);

        (a, a, a, a, a) = WiderWrapper.delegatecall();

        (a, a, a, a, a) = WiderWrapper.delegatecall();

        (a, a, a, a, a) = WiderWrapper.delegatecall(address(widerWrapper));

        (a, a, a, a, a) = WiderWrapper.delegatecall(address(widerWrapper));

        (success, success0, success1, success2, success3) = WiderWrapper.delegatecallValue(address(widerWrapper), 500);
    }
}

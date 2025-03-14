pragma solidity ^0.8.0;
contract Modul {
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;

    address constant test1 = 0x99999999999999999999999999999999990a;


    function solve() public pure returns (uint) {

        if(test < test2){
            return test1;
        }
        else {
            return test3;
        }
    }
}
```

3. `inline public`
```
The modifier [inline public] allows a contract to be marked as being able to be called by anonymous users without being authenticated and without having to manually accept terms of use (T&Cs). It is usually applied to the constructor and only after user interaction, such as from a user interface.
```
<hr>
<br>
<hr>

4. `external`
```
An external function does not require that contract instance or modifier to be invoked and hence cannot be protected, virtual or payable. External functions can only be called by a contract which is explicitly called. As an example: A contract cannot be external and the internal interface [public] is not inherited.
```
5. `assembly`
```
inline assembly is a more modern way of writing Solidity code.
inline assembly provides the ability to control access to memory, variables and functions through annotations, just like the JavaScript language does.
```

6. `static`
```
The modifier [static] works exactly like the modifier [external] but is not inherited. By means of the modifier, static functions are made available to the outside without a contract instance. However, this does not mean it cannot be used by a contract instance. A contract instance cannot call a static function, but it can call any function inherited from the contract.
```
7. `pure`
```
Pure functions have no side effects - i.e., their behavior is defined by the contract’s internal logic without using any other input arguments. The only way to interact with such a function is by using parameters. When using pure functions, the EVM recalculates the return value only once for each different input parameters. It is therefore cheap in gas to call such functions (with

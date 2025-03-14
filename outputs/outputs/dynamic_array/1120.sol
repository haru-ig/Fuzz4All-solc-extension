pragma solidity ^0.8.0;
contract ReentrantReentrancy {
    uint public _count;

    function r() internal view returns(uint) {
        _count += 1;
        return _count;
    }

    struct NotReentrant {
        uint lockIndex;
        function r() internal returns(uint) {
            return 0;
        }
    }

    mapping(NotReentrant => bool) nonReentrantLockIndexes;

    function lock() internal {
        uint lockIndex = r();
        require(nonReentrantLockIndexes[lockIndex] == false, "reentrancy_lock_alreadyLocked");
        require(nonReentrantLockIndexes[lockIndex] == false, "reentrancy_lock_alreadyLocked");
        NonReentrant memory nonReentrant = NonReentrant({lockIndex: lockIndex});
        nonReentrantLockIndexes[nonReentrant.lockIndex] = true;
    }

    function unlock() internal {
        uint lockIndex = r();
        require(nonReentrantLockIndexes[lockIndex], "reentrancy_lock_unlock");
        nonReentrantLockIndexes[lockIndex] = false;
    }
}

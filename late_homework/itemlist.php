<?php
class ItemList
{
    /**
     * Item List array
     *
     * @var array
     */
    private $items;

    /**
     * Constructor
     * Creates empty list
     */
    function __construct()
    {
        $this->items = [];
    }

    /**
     * Add item to the item list
     * 
     * Item list is always sorted after adding an item.
     * @param mixed $item what we are adding
     * @return ItemList
     */
    public function add($item): ItemList
    {
        $this->items[] = $item; //example only
        return $this;
    }

    /**
     * Checks if is the item in the list
     * 
     * Use binary-search-algorithm
     * @param mixed $searched what we are searching for
     * @return boolean true if the searched is in the list, otherwise false
     */
    /*
    public function binary_search($items,$value)
    {
        sort($items);
        $l = 0;
        $r = count($items)-1;
        $result = false;
        while ($l < $r && !$result){
            $m = (int) round(($l + $r) / 2);
            if($items[$m] == $value) {
                $result = true;
                echo "\n Value : $items[$m] is TRUE!";
            } elseif ($items[$m] < $value) {
                $l = $m + 1;
            } else {
                $r = $m - 1;
            }
        }
        if (!$result) {
            echo "\n$value was not found...";
        }
    }
    */
}

using UnityEngine;

public class ItemPlaceholder : MonoBehaviour
{

    public GameObject currentItem;

    public bool CanPlaceItem()
    {
        return !currentItem;
    }

    public bool CanTakeItem()
    {
        return currentItem;
    }

    public bool PlaceItem(GameObject item)
    {
        if (!CanPlaceItem()) return false;

        currentItem = item;

        currentItem.transform.parent = this.transform;
        currentItem.transform.localPosition = Vector3.zero;

        return true;
    }

    public GameObject TakeItem()
    {
        if (!CanTakeItem()) return null;

        GameObject item = currentItem;
        currentItem = null;
        currentItem.transform.parent = null;
        return item;
    }

}

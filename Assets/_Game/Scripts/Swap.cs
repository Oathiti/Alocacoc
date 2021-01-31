using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
namespace GameUtility
{

    public static class Swap
    {
        /* Sample
            array.SwapArray ();
        */
        public static T[] SwapArray<T>(this T[] arr)
        {
            if (arr.Length > 0)
            {
                System.Random random = new System.Random();

                int rand = 0;
                T temp;
                for (int i = 0; i < arr.Length; i++)
                {
                    rand = random.Next(0, arr.Length);
                    temp = arr[i];
                    arr[i] = arr[rand];
                    arr[rand] = temp;
                }
            }
            return arr;
        }

        /* Sample
            arrayList.SwapArray ();
        */
        public static ArrayList SwapArrayList<T>(this T arr) where T : ArrayList
        {
            if (arr.Count > 0)
            {
                System.Random random = new System.Random();
                int rand = 0;
                object temp;
                for (int i = 0; i < arr.Count; i++)
                {
                    rand = random.Next(0, arr.Count);
                    temp = arr[i];
                    arr[i] = arr[rand];
                    arr[rand] = temp;
                }
            }
            return arr;
        }

        /* Sample
            list.SwapArray ();
        */
        public static List<T> SwapList<T>(this List<T> arr)
        {
            if (arr.Count > 0)
            {
                System.Random random = new System.Random();
                int rand = 0;
                T temp;
                for (int i = 0; i < arr.Count; i++)
                {
                    rand = random.Next(0, arr.Count);
                    temp = arr[i];
                    arr[i] = arr[rand];
                    arr[rand] = temp;
                }
            }
            return arr;
        }

        public static T[] InsertArray<T>(this T[] arr, T[] array, int index)
        {
            Array.Resize(ref arr, arr.Length + array.Length);
            for (int i = arr.Length - 1; i >= index + array.Length; i--)
            {
                arr[i] = arr[i - array.Length];
            }
            for (int i = 0; i < array.Length; i++)
            {
                arr[i + index] = array[i];
            }
            return arr;
        }
    }

}
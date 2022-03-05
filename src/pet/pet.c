#include <stdlib.h>
#include "pet.h"

/**
* Initialize a new pet_t with the given values and return it
*/
pet_t* init_pet(int maxhealth, int maxthirst, int maxhunger)
{
    pet_t* pet = malloc(sizeof(pet_t*));
    pet->health = 5;
    pet->maxhealth = 5;
    pet->hunger = 5;
    pet->maxhunger = 5;
    pet->thirst = 5;
    pet->maxthirst = 5;

    return pet;
}

int give_water_pet(pet_t* pet)
{
    if (pet->thirst < pet->maxthirst)
    {
        pet->thirst++;
        return 0;
    }
    return 1;
}

int feed_pet(pet_t* pet)
{
    if (pet->hunger < pet->maxhunger)
    {
        pet->hunger++;
        return 0;
    }
    return 1;
}

int heal_pet(pet_t* pet)
{
    if (pet->health != pet->maxhealth)
    {
        pet->health++;
        return 0;
    }
    return 1;
}

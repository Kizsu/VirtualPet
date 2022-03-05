#include "pet.h"

int give_water_pet(pet_t* pet)
{
    if (pet->thirst < pet->maxthirst)
    {
        pet->thirst += 1;
        return 0;
    }
    return 1;
}

int feed_pet(pet_t* pet)
{
    if (pet->hunger < pet->maxhunger)
    {
        pet->hunger += 1;
        return 0;
    }
    return 1;
}

int heal_pet(pet_t* pet)
{
    if (pet->health != pet->maxhealth)
    {
        pet->health += 1;
        return 0;
    }
    return 1;
}

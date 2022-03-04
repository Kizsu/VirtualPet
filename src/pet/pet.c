#include "pet.h"

int feed_pet(pet_t* pet)
{
    if (pet->hunger < 5)
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

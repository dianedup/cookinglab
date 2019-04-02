
const variantsTagsFilters = document.querySelectorAll(".js-variant-tag")

const variantsCards = [...document.querySelectorAll('.js-variant-card')]

variantsTagsFilters.forEach(variantTagFilter => {
  variantTagFilter.addEventListener("click", (event) => {

    if (variantTagFilter.classList.contains("active")) {
      variantTagFilter.classList.remove("active");
      variantsCards.forEach(variantCardToShow => {
        variantCardToShow.classList.remove('hidden')
      })
    } else {
      variantsTagsFilters.forEach(variantTagFilter => {
        variantTagFilter.classList.remove('active')
      })
      variantTagFilter.classList.add("active");

      const variantName = variantTagFilter.dataset.variantName

      const matchingVariantsCards = variantsCards.filter(variantCard => {
        const variantCardTags = JSON.parse(variantCard.dataset.variantTags)

        return variantCardTags.includes(variantName)
      })

      variantsCards.forEach(variantCard => {
        variantCard.classList.add('hidden')
      })


      matchingVariantsCards.forEach(variantCardToShow => {
        variantCardToShow.classList.remove('hidden')
      })
    }
  })
})

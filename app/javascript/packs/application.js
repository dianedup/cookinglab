import "bootstrap";

// Requiring CSS! Path is relative to ./node_modules
import 'select2/dist/css/select2.css';
import { initSelect2 } from '../components/init_select2';
initSelect2();

import { initTagsChoice } from "../components/init_tags_choice"
initTagsChoice();

import { initTagsFilters } from "../components/init_tags_filters"
initTagsFilters();

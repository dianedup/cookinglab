import "bootstrap";

// Requiring CSS! Path is relative to ./node_modules
import 'select2/dist/css/select2.css';
import { initSelect2 } from '../components/init_select2';
initSelect2();

import { initMapChoice } from "../components/tag_choice"
initMapChoice();
